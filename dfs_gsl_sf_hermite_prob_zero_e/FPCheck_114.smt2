(declare-fun a_ack!526 () (_ BitVec 32))
(declare-fun b_ack!525 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvsle a_ack!526 #x00000000)))
(assert (not (bvslt b_ack!525 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!526 #x00000002) b_ack!525)))
(assert (not (= #x00000000 b_ack!525)))
(assert (not (= #x00000002 a_ack!526)))
(assert (not (bvslt a_ack!526 #x00000015)))
(assert (= #x00000001 b_ack!525))
(assert (not (bvslt #x00000032 a_ack!526)))
(assert (let ((a!1 (bvult (bvadd #x00000001
                         (bvsub (bvsdiv a_ack!526 #x00000002) b_ack!525))
                  #x00000001)))
  (not a!1)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!526 #x00000002) b_ack!525)))))
  (bvult a!1 #x0000000000000065)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!526 #x00000002) b_ack!525)))))
  (bvult #x0000000000000000 (bvmul #x0000000000000008 a!1))))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!526 #x00000002) b_ack!525)))))
  (bvult (bvmul #x0000000000000008 a!1) #x0000000000000321)))
(assert (FPCHECK_FINVALID_POW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvmul #x00000002 a_ack!526))
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvmul #x00000002 a_ack!526))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
