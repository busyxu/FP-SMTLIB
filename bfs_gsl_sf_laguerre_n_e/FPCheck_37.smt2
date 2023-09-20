(declare-fun a_ack!184 () (_ BitVec 32))
(declare-fun c_ack!183 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!182 () (_ BitVec 64))
(assert (not (bvslt a_ack!184 #x00000000)))
(assert (not (= #x00000000 a_ack!184)))
(assert (not (= #x00000001 a_ack!184)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!183) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!183) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt a_ack!184 #x00000005))
(assert (bvule a_ack!184 #x000000aa))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!184)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!184)))
       #x0000000000001001))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!182)
          ((_ to_fp 11 53) #x3ff0000000000000))
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!184)))

(check-sat)
(exit)
