(declare-fun nu1_ack!156 () (_ BitVec 64))
(declare-fun nu2_ack!157 () (_ BitVec 64))
(declare-fun x_ack!158 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!157)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!156)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!158)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!157)
               ((_ to_fp 11 53) nu1_ack!156))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!157)
          ((_ to_fp 11 53) nu1_ack!156))
  x_ack!158))

(check-sat)
(exit)
