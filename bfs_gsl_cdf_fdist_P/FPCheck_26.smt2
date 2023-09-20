(declare-fun nu1_ack!162 () (_ BitVec 64))
(declare-fun nu2_ack!163 () (_ BitVec 64))
(declare-fun x_ack!164 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!163)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!162)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!164)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!163)
               ((_ to_fp 11 53) nu1_ack!162))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!163)
          ((_ to_fp 11 53) nu1_ack!162))
  x_ack!164))

(check-sat)
(exit)
