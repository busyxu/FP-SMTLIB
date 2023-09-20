(declare-fun b_ack!462 () (_ BitVec 32))
(declare-fun a_ack!463 () (_ BitVec 32))
(assert (not (bvslt b_ack!462 #x00000000)))
(assert (not (bvslt a_ack!463 #x00000000)))
(assert (not (bvslt b_ack!462 a_ack!463)))
(assert (not (bvult b_ack!462 a_ack!463)))
(assert (not (= a_ack!463 b_ack!462)))
(assert (not (= #x00000000 a_ack!463)))
(assert (bvule b_ack!462 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!462)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 b_ack!462)))
       #x0000000000001001))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!463)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!463)))
       #x0000000000001001))

(check-sat)
(exit)
