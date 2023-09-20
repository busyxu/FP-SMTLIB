(declare-fun b_ack!984 () (_ BitVec 32))
(declare-fun a_ack!985 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!984 #x00000000)))
(assert (not (bvslt a_ack!985 #x00000000)))
(assert (not (= #x00000000 a_ack!985)))
(assert (not (bvslt b_ack!984 a_ack!985)))
(assert (not (= b_ack!984 a_ack!985)))
(assert (not (= b_ack!984 (bvadd #x00000001 a_ack!985))))
(assert (not (bvslt a_ack!985 #x00000000)))
(assert (not (= #x00000000 (bvand a_ack!985 #x00000001))))
(assert (= #x00000000
   (ite (= ((_ extract 31 31) a_ack!985) #b1)
        (concat #b1 ((_ extract 31 1) a_ack!985))
        (concat #b0 ((_ extract 31 1) a_ack!985)))))
(assert (bvult a_ack!985 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!985)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!985)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!985))
(assert (not (bvslt #x00000001 a_ack!985)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!985))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!985))
       #x0000000000000319))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!985)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!985)))
       #x0000000000000319))
(assert (bvslt (bvadd #x00000001 a_ack!985) b_ack!984))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!985)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!985)))
       #x0000000000000319))
(assert (bvslt (bvadd #x00000002 a_ack!985) b_ack!984))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000002 a_ack!985))
  #x3ff0000000000000))

(check-sat)
(exit)
