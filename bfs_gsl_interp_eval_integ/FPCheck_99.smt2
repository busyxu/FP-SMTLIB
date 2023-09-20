(declare-fun x1_ack!1098 () (_ BitVec 64))
(declare-fun x0_ack!1102 () (_ BitVec 64))
(declare-fun x2_ack!1099 () (_ BitVec 64))
(declare-fun b_ack!1101 () (_ BitVec 64))
(declare-fun a_ack!1100 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1102) ((_ to_fp 11 53) x1_ack!1098)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1098) ((_ to_fp 11 53) x2_ack!1099)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1098)
                       ((_ to_fp 11 53) x0_ack!1102))
               ((_ to_fp 11 53) x0_ack!1102))
       ((_ to_fp 11 53) x1_ack!1098)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1098)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1098)
                       ((_ to_fp 11 53) x0_ack!1102)))
       ((_ to_fp 11 53) x0_ack!1102)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1099)
                       ((_ to_fp 11 53) x1_ack!1098))
               ((_ to_fp 11 53) x1_ack!1098))
       ((_ to_fp 11 53) x2_ack!1099)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1099)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1099)
                       ((_ to_fp 11 53) x1_ack!1098)))
       ((_ to_fp 11 53) x1_ack!1098)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1098)
                    ((_ to_fp 11 53) x0_ack!1102))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1099)
                    ((_ to_fp 11 53) x1_ack!1098))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1100) ((_ to_fp 11 53) b_ack!1101))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1100) ((_ to_fp 11 53) x0_ack!1102))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1101) ((_ to_fp 11 53) x2_ack!1099))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1100) ((_ to_fp 11 53) b_ack!1101))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1100) ((_ to_fp 11 53) x0_ack!1102))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1100) ((_ to_fp 11 53) x1_ack!1098))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1101) ((_ to_fp 11 53) x0_ack!1102)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1098)
                    ((_ to_fp 11 53) x0_ack!1102))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1100)
          ((_ to_fp 11 53) x0_ack!1102))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1100)
          ((_ to_fp 11 53) x0_ack!1102))))

(check-sat)
(exit)
