(declare-fun b_ack!1998 () (_ BitVec 32))
(declare-fun a_ack!2000 () (_ BitVec 32))
(declare-fun c_ack!1999 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!1998 #x00000000)))
(assert (not (bvslt a_ack!2000 #x00000000)))
(assert (not (bvslt b_ack!1998 a_ack!2000)))
(assert (not (bvult b_ack!1998 a_ack!2000)))
(assert (not (= a_ack!2000 b_ack!1998)))
(assert (= #x00000000 a_ack!2000))
(assert (bvult a_ack!2000 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!2000)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!2000)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!1998 a_ack!2000) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1998 a_ack!2000))))
(assert (not (= #x00000001 (bvsub b_ack!1998 a_ack!2000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1999) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1999))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 (bvsub b_ack!1998 a_ack!2000)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1999))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 (bvsub b_ack!1998 a_ack!2000)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1999)
                                   ((_ to_fp 11 53) c_ack!1999))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1999))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (not (bvslt #x00000003 (bvsub b_ack!1998 a_ack!2000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1999)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1999)
                                   ((_ to_fp 11 53) c_ack!1999))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1999))))))
  (FPCHECK_FMUL_UNDERFLOW a!2 #x3cb0000000000000))))

(check-sat)
(exit)
