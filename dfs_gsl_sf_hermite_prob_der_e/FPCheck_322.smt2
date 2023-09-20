(declare-fun b_ack!1803 () (_ BitVec 32))
(declare-fun a_ack!1805 () (_ BitVec 32))
(declare-fun c_ack!1804 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1803 #x00000000)))
(assert (not (bvslt a_ack!1805 #x00000000)))
(assert (not (bvslt b_ack!1803 a_ack!1805)))
(assert (not (bvult b_ack!1803 a_ack!1805)))
(assert (not (= a_ack!1805 b_ack!1803)))
(assert (= #x00000000 a_ack!1805))
(assert (bvult a_ack!1805 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1805)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1805)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!1803 a_ack!1805) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1803 a_ack!1805))))
(assert (not (= #x00000001 (bvsub b_ack!1803 a_ack!1805))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1804) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1804))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 (bvsub b_ack!1803 a_ack!1805)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1804))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (not (bvslt #x00000002 (bvsub b_ack!1803 a_ack!1805))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) c_ack!1804))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!1804))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1804)
                                   ((_ to_fp 11 53) c_ack!1804))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3cb0000000000000)))))

(check-sat)
(exit)
