(declare-fun b_ack!2287 () (_ BitVec 32))
(declare-fun a_ack!2289 () (_ BitVec 32))
(declare-fun c_ack!2288 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!2287 #x00000000)))
(assert (not (bvslt a_ack!2289 #x00000000)))
(assert (not (= #x00000000 b_ack!2287)))
(assert (not (= #x00000001 b_ack!2287)))
(assert (not (= #x00000000 a_ack!2289)))
(assert (= #x00000001 a_ack!2289))
(assert (not (bvslt b_ack!2287 #x00000000)))
(assert (not (= #x00000000 b_ack!2287)))
(assert (not (= #x00000001 b_ack!2287)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!2288) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand b_ack!2287 #x00000001)))
(assert (not (bvslt #x00000129 (bvadd #xffffffff b_ack!2287))))
(assert (bvult (bvadd #xffffffff b_ack!2287) #x0000001a))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xffffffff b_ack!2287))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd #xffffffff b_ack!2287))))))
  (bvult a!1 #x0000000000001be9)))
(assert (not (= #x00000000 (bvand (bvsdiv b_ack!2287 #x00000002) #x00000001))))
(assert (not (bvslt (bvadd #xffffffff b_ack!2287) #x00000000)))
(assert (not (= #x00000001 b_ack!2287)))
(assert (= #x00000002 b_ack!2287))
(assert (FPCHECK_FMUL_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2287)
  c_ack!2288))

(check-sat)
(exit)
