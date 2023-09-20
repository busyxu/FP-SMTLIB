(declare-fun nu1_ack!18 () (_ BitVec 64))
(declare-fun nu2_ack!19 () (_ BitVec 64))
(declare-fun x_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!19)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!18)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!20)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!19)
                    ((_ to_fp 11 53) nu1_ack!18)))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!19)
          ((_ to_fp 11 53) nu1_ack!18))
  x_ack!20))

(check-sat)
(exit)
