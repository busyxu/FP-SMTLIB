(declare-fun b_ack!621 () (_ BitVec 32))
(declare-fun a_ack!623 () (_ BitVec 32))
(declare-fun c_ack!622 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!621 #x00000000)))
(assert (not (bvslt a_ack!623 #x00000000)))
(assert (not (bvslt b_ack!621 a_ack!623)))
(assert (not (bvult b_ack!621 a_ack!623)))
(assert (not (= a_ack!623 b_ack!621)))
(assert (= #x00000000 a_ack!623))
(assert (bvult a_ack!623 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!623)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!623)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!621 a_ack!623) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!621 a_ack!623))))
(assert (not (= #x00000001 (bvsub b_ack!621 a_ack!623))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!622) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!622))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW #x7feccccccccccccc (fp.abs ((_ to_fp 11 53) c_ack!622))))

(check-sat)
(exit)
