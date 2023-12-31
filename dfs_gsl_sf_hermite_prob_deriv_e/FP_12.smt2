(declare-fun b_ack!345 () (_ BitVec 32))
(declare-fun a_ack!347 () (_ BitVec 32))
(declare-fun c_ack!346 () (_ BitVec 64))
(assert (not (bvslt b_ack!345 #x00000000)))
(assert (not (bvslt a_ack!347 #x00000000)))
(assert (not (bvslt b_ack!345 a_ack!347)))
(assert (not (bvult b_ack!345 a_ack!347)))
(assert (not (= a_ack!347 b_ack!345)))
(assert (= #x00000000 a_ack!347))
(assert (bvult a_ack!347 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!347)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!347)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!345 a_ack!347) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!345 a_ack!347))))
(assert (not (= #x00000001 (bvsub b_ack!345 a_ack!347))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!346) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand (bvsub b_ack!345 a_ack!347) #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xffffffff (bvsub b_ack!345 a_ack!347)))))
(assert (bvult (bvadd #xffffffff (bvsub b_ack!345 a_ack!347)) #x0000001a))

(check-sat)
(exit)
