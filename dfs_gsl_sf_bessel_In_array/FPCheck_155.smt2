(declare-fun c_ack!664 () (_ BitVec 64))
(declare-fun a_ack!665 () (_ BitVec 32))
(declare-fun b_ack!663 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!664))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!663 a_ack!665)))
(assert (not (bvslt a_ack!665 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!664) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!663))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!664))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!664)))
  (fp.abs ((_ to_fp 11 53) c_ack!664))))

(check-sat)
(exit)
