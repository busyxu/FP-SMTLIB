(declare-fun b_ack!127 () (_ BitVec 64))
(declare-fun x_ack!128 () (_ BitVec 64))
(declare-fun a_ack!126 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!128)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!127)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!128) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!128)
                    ((_ to_fp 11 53) b_ack!127))
            ((_ to_fp 11 53) a_ack!126))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!126) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!128)
                    ((_ to_fp 11 53) b_ack!127))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!128)
                    ((_ to_fp 11 53) b_ack!127))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!126) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!128)
                     ((_ to_fp 11 53) b_ack!127))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!126)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!126) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!126) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!126)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!128)
                     ((_ to_fp 11 53) b_ack!127)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!128)
                    ((_ to_fp 11 53) b_ack!127))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!126)
                    ((_ to_fp 11 53) #x7ff8000000000001)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!126) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!128)
                    ((_ to_fp 11 53) b_ack!127))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!126)))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!128)
                  ((_ to_fp 11 53) b_ack!127))
          ((_ to_fp 11 53) a_ack!126))
  a_ack!126))

(check-sat)
(exit)
