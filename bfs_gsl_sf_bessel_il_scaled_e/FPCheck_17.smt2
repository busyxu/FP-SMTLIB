(declare-fun b_ack!62 () (_ BitVec 64))
(declare-fun a_ack!63 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!62) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!63 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!62) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!63))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!62) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!62)) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!62))
  (fp.abs ((_ to_fp 11 53) b_ack!62))))

(check-sat)
(exit)
