(declare-fun b_ack!591 () (_ BitVec 32))
(declare-fun a_ack!593 () (_ BitVec 32))
(declare-fun c_ack!592 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!591 #x00000000)))
(assert (not (bvslt a_ack!593 #x00000000)))
(assert (not (bvslt b_ack!591 a_ack!593)))
(assert (not (bvult b_ack!591 a_ack!593)))
(assert (not (= a_ack!593 b_ack!591)))
(assert (= #x00000000 a_ack!593))
(assert (bvult a_ack!593 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!593)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!593)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!591 a_ack!593) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!591 a_ack!593))))
(assert (not (= #x00000001 (bvsub b_ack!591 a_ack!593))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!592) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!592))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW #x7feccccccccccccc (fp.abs ((_ to_fp 11 53) c_ack!592))))

(check-sat)
(exit)
