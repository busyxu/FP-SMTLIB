(declare-fun a_ack!144 () (_ BitVec 32))
(declare-fun b_ack!143 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvsle a_ack!144 #x00000000)))
(assert (not (bvslt b_ack!143 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!144 #x00000002) b_ack!143)))
(assert (not (= #x00000000 b_ack!143)))
(assert (not (= #x00000002 a_ack!144)))
(assert (not (bvslt a_ack!144 #x00000015)))
(assert (not (= #x00000001 b_ack!143)))
(assert (let ((a!1 (bvult (bvadd #x00000001
                         (bvsub (bvsdiv a_ack!144 #x00000002) b_ack!143))
                  #x00000001)))
  (not a!1)))
(assert (let ((a!1 (concat #x00000000
                   (bvadd #x00000001
                          (bvsub (bvsdiv a_ack!144 #x00000002) b_ack!143)))))
  (not (bvult a!1 #x0000000000000065))))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvsub (bvsdiv a_ack!144 #x00000002) b_ack!143)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4010000000000000) a!1)
    #x3ff0000000000000)))

(check-sat)
(exit)
