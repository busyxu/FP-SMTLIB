(declare-fun x1_ack!1188 () (_ BitVec 64))
(declare-fun x0_ack!1194 () (_ BitVec 64))
(declare-fun x2_ack!1189 () (_ BitVec 64))
(declare-fun b_ack!1193 () (_ BitVec 64))
(declare-fun a_ack!1192 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1190 () (_ BitVec 64))
(declare-fun y2_ack!1191 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1194) ((_ to_fp 11 53) x1_ack!1188)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1188) ((_ to_fp 11 53) x2_ack!1189)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1188)
                       ((_ to_fp 11 53) x0_ack!1194))
               ((_ to_fp 11 53) x0_ack!1194))
       ((_ to_fp 11 53) x1_ack!1188)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1188)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1188)
                       ((_ to_fp 11 53) x0_ack!1194)))
       ((_ to_fp 11 53) x0_ack!1194)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1189)
                       ((_ to_fp 11 53) x1_ack!1188))
               ((_ to_fp 11 53) x1_ack!1188))
       ((_ to_fp 11 53) x2_ack!1189)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1189)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1189)
                       ((_ to_fp 11 53) x1_ack!1188)))
       ((_ to_fp 11 53) x1_ack!1188)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1188)
                    ((_ to_fp 11 53) x0_ack!1194))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1189)
                    ((_ to_fp 11 53) x1_ack!1188))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1192) ((_ to_fp 11 53) b_ack!1193))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1192) ((_ to_fp 11 53) x0_ack!1194))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1193) ((_ to_fp 11 53) x2_ack!1189))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1192) ((_ to_fp 11 53) b_ack!1193))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1192) ((_ to_fp 11 53) x0_ack!1194))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1192) ((_ to_fp 11 53) x1_ack!1188)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1188) ((_ to_fp 11 53) a_ack!1192))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1193) ((_ to_fp 11 53) x1_ack!1188))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1193) ((_ to_fp 11 53) x2_ack!1189))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1189)
                    ((_ to_fp 11 53) x1_ack!1188))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1191)
          ((_ to_fp 11 53) y1_ack!1190))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1189)
          ((_ to_fp 11 53) x1_ack!1188))))

(check-sat)
(exit)
