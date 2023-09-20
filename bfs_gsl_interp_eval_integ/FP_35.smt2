(declare-fun x1_ack!1138 () (_ BitVec 64))
(declare-fun x0_ack!1142 () (_ BitVec 64))
(declare-fun x2_ack!1139 () (_ BitVec 64))
(declare-fun b_ack!1141 () (_ BitVec 64))
(declare-fun a_ack!1140 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1142) ((_ to_fp 11 53) x1_ack!1138)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1138) ((_ to_fp 11 53) x2_ack!1139)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1138)
                       ((_ to_fp 11 53) x0_ack!1142))
               ((_ to_fp 11 53) x0_ack!1142))
       ((_ to_fp 11 53) x1_ack!1138)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1138)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1138)
                       ((_ to_fp 11 53) x0_ack!1142)))
       ((_ to_fp 11 53) x0_ack!1142)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1139)
                       ((_ to_fp 11 53) x1_ack!1138))
               ((_ to_fp 11 53) x1_ack!1138))
       ((_ to_fp 11 53) x2_ack!1139)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1139)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1139)
                       ((_ to_fp 11 53) x1_ack!1138)))
       ((_ to_fp 11 53) x1_ack!1138)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1138)
                    ((_ to_fp 11 53) x0_ack!1142))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1139)
                    ((_ to_fp 11 53) x1_ack!1138))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1140) ((_ to_fp 11 53) b_ack!1141))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1140) ((_ to_fp 11 53) x0_ack!1142))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1141) ((_ to_fp 11 53) x2_ack!1139))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1140) ((_ to_fp 11 53) b_ack!1141))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1140) ((_ to_fp 11 53) x0_ack!1142))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1140) ((_ to_fp 11 53) x1_ack!1138))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1141) ((_ to_fp 11 53) x0_ack!1142)))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x1_ack!1138)
                               ((_ to_fp 11 53) x0_ack!1142))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
