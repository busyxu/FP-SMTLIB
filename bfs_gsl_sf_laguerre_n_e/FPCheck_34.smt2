(declare-fun a_ack!169 () (_ BitVec 32))
(declare-fun c_ack!168 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!167 () (_ BitVec 64))
(assert (not (bvslt a_ack!169 #x00000000)))
(assert (not (= #x00000000 a_ack!169)))
(assert (not (= #x00000001 a_ack!169)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!168) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!168) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt a_ack!169 #x00000005))
(assert (bvule a_ack!169 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!169)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!169)))
       #x0000000000001001))
(assert (FPCHECK_FADD_OVERFLOW b_ack!167 #x3ff0000000000000))

(check-sat)
(exit)
