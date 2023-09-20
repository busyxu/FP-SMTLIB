(declare-fun b_ack!756 () (_ BitVec 32))
(declare-fun a_ack!758 () (_ BitVec 32))
(declare-fun c_ack!757 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!756 #x00000000)))
(assert (not (bvslt a_ack!758 #x00000000)))
(assert (not (bvslt b_ack!756 a_ack!758)))
(assert (not (bvult b_ack!756 a_ack!758)))
(assert (not (= a_ack!758 b_ack!756)))
(assert (= #x00000000 a_ack!758))
(assert (bvult a_ack!758 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!758)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!758)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!756 a_ack!758) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!756 a_ack!758))))
(assert (not (= #x00000001 (bvsub b_ack!756 a_ack!758))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!757) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!757))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvsub b_ack!756 a_ack!758)))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!757))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!757))))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!757)
                                   ((_ to_fp 11 53) c_ack!757))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!757)
                 ((_ to_fp 11 53) c_ack!757)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!757)
                           ((_ to_fp 11 53) c_ack!757))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!757)
                                   ((_ to_fp 11 53) c_ack!757))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000002 (bvsub b_ack!756 a_ack!758))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) c_ack!757))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!757))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!757)
                                   ((_ to_fp 11 53) c_ack!757))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3cb0000000000000)))))

(check-sat)
(exit)
