(declare-fun limit_ack!5511 () (_ BitVec 64))
(declare-fun a_ack!5512 () (_ BitVec 64))
(declare-fun b_ack!5508 () (_ BitVec 64))
(declare-fun epsabs_ack!5510 () (_ BitVec 64))
(declare-fun c_ack!5509 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!5511)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5508) ((_ to_fp 11 53) a_ack!5512))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5510)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5509) ((_ to_fp 11 53) a_ack!5512))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5509) ((_ to_fp 11 53) b_ack!5508))))

(check-sat)
(exit)
