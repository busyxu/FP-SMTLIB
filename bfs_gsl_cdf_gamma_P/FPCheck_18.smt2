(declare-fun b_ack!141 () (_ BitVec 64))
(declare-fun x_ack!142 () (_ BitVec 64))
(declare-fun a_ack!140 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!142)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!141)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!142)
                    ((_ to_fp 11 53) b_ack!141))
            ((_ to_fp 11 53) a_ack!140))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!140) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!142)
                    ((_ to_fp 11 53) b_ack!141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!142)
                    ((_ to_fp 11 53) b_ack!141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!142)
                    ((_ to_fp 11 53) b_ack!141))
            ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!142)
                    ((_ to_fp 11 53) b_ack!141))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!140)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!140) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!140)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!142)
                     ((_ to_fp 11 53) b_ack!141)))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!142)
          ((_ to_fp 11 53) b_ack!141))
  a_ack!140))

(check-sat)
(exit)
