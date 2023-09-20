(declare-fun b_ack!1809 () (_ BitVec 32))
(declare-fun a_ack!1811 () (_ BitVec 32))
(declare-fun c_ack!1810 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1809 #x00000000)))
(assert (not (bvslt a_ack!1811 #x00000000)))
(assert (not (bvslt b_ack!1809 a_ack!1811)))
(assert (not (bvult b_ack!1809 a_ack!1811)))
(assert (not (= a_ack!1811 b_ack!1809)))
(assert (= #x00000000 a_ack!1811))
(assert (bvult a_ack!1811 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1811)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1811)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!1809 a_ack!1811) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1809 a_ack!1811))))
(assert (not (= #x00000001 (bvsub b_ack!1809 a_ack!1811))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1810) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1810))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 (bvsub b_ack!1809 a_ack!1811)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1810))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (not (bvslt #x00000002 (bvsub b_ack!1809 a_ack!1811))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) c_ack!1810))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!1810))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1810)
                                   ((_ to_fp 11 53) c_ack!1810))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3cb0000000000000)))))

(check-sat)
(exit)
