(declare-fun x_ack!36 () (_ BitVec 64))
(declare-fun nu1_ack!34 () (_ BitVec 64))
(declare-fun nu2_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!35) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!35) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  nu2_ack!35
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!35)
          ((_ to_fp 11 53) nu1_ack!34))))

(check-sat)
(exit)
