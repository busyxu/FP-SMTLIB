(declare-fun c_ack!6709 () (_ BitVec 64))
(declare-fun a_ack!6710 () (_ BitVec 32))
(declare-fun b_ack!6708 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6709) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!6710 #xffffffff)))
(assert (not (= #xffffffff a_ack!6710)))
(assert (= #x00000000 a_ack!6710))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6709) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6709) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!6708) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6709) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!6709) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6708) ((_ to_fp 11 53) #x4031000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.abs ((_ to_fp 11 53) c_ack!6709))))

(check-sat)
(exit)
