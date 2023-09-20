(declare-fun nu1_ack!24 () (_ BitVec 64))
(declare-fun nu2_ack!25 () (_ BitVec 64))
(declare-fun x_ack!26 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!25)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!24)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!26)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!25)
                    ((_ to_fp 11 53) nu1_ack!24)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!25)
          ((_ to_fp 11 53) nu1_ack!24))
  x_ack!26))

(check-sat)
(exit)
