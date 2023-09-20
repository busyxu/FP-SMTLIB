(declare-fun nu1_ack!39 () (_ BitVec 64))
(declare-fun nu2_ack!40 () (_ BitVec 64))
(declare-fun x_ack!41 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!40)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!39)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!41)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!40)
                    ((_ to_fp 11 53) nu1_ack!39)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!40)
          ((_ to_fp 11 53) nu1_ack!39))
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!40)
                  ((_ to_fp 11 53) nu1_ack!39))
          ((_ to_fp 11 53) x_ack!41))))

(check-sat)
(exit)
