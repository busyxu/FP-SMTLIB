(declare-fun x_ack!42 () (_ BitVec 64))
(declare-fun nu1_ack!40 () (_ BitVec 64))
(declare-fun nu2_ack!41 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!42) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!42) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!40) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!41) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!42) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!42) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!42) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  nu1_ack!40
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) nu1_ack!40)
          ((_ to_fp 11 53) nu2_ack!41))))

(check-sat)
(exit)
