(declare-fun x1_ack!1143 () (_ BitVec 64))
(declare-fun x0_ack!1147 () (_ BitVec 64))
(declare-fun x2_ack!1144 () (_ BitVec 64))
(declare-fun b_ack!1146 () (_ BitVec 64))
(declare-fun a_ack!1145 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1147) ((_ to_fp 11 53) x1_ack!1143)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1143) ((_ to_fp 11 53) x2_ack!1144)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1143)
                       ((_ to_fp 11 53) x0_ack!1147))
               ((_ to_fp 11 53) x0_ack!1147))
       ((_ to_fp 11 53) x1_ack!1143)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1143)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1143)
                       ((_ to_fp 11 53) x0_ack!1147)))
       ((_ to_fp 11 53) x0_ack!1147)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1144)
                       ((_ to_fp 11 53) x1_ack!1143))
               ((_ to_fp 11 53) x1_ack!1143))
       ((_ to_fp 11 53) x2_ack!1144)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1144)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1144)
                       ((_ to_fp 11 53) x1_ack!1143)))
       ((_ to_fp 11 53) x1_ack!1143)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1143)
                    ((_ to_fp 11 53) x0_ack!1147))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1144)
                    ((_ to_fp 11 53) x1_ack!1143))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1145) ((_ to_fp 11 53) b_ack!1146))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1145) ((_ to_fp 11 53) x0_ack!1147))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1146) ((_ to_fp 11 53) x2_ack!1144))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1145) ((_ to_fp 11 53) b_ack!1146))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1145) ((_ to_fp 11 53) x0_ack!1147))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1145) ((_ to_fp 11 53) x1_ack!1143))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1146) ((_ to_fp 11 53) x0_ack!1147))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1146) ((_ to_fp 11 53) x1_ack!1143)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1143) ((_ to_fp 11 53) b_ack!1146))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1143)
                    ((_ to_fp 11 53) x0_ack!1147))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1145)
                  ((_ to_fp 11 53) x0_ack!1147))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1145)
                  ((_ to_fp 11 53) x0_ack!1147)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1143)
                  ((_ to_fp 11 53) x0_ack!1147))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1143)
                  ((_ to_fp 11 53) x0_ack!1147)))))

(check-sat)
(exit)
