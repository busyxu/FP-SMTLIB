(declare-fun c_ack!428 () (_ BitVec 64))
(declare-fun b_ack!427 () (_ BitVec 32))
(declare-fun a_ack!429 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!428) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!429 b_ack!427)))
(assert (not (= #x00000000 b_ack!427)))
(assert (not (= #x00000000 a_ack!429)))
(assert (not (bvslt b_ack!427 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!428) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!428) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!429 #x00000000)))
(assert (not (bvslt a_ack!429 #x00000000)))
(assert (not (= a_ack!429 b_ack!427)))
(assert (not (= #x00000001 a_ack!429)))
(assert (not (= b_ack!427 (bvadd #x00000001 a_ack!429))))
(assert (not (= a_ack!429 (bvadd #x00000001 b_ack!427))))
(assert (not (= a_ack!429 (bvadd #x00000002 b_ack!427))))
(assert (not (= b_ack!427 (bvmul #x00000002 a_ack!429))))
(assert (bvslt b_ack!427 #x0000000a))
(assert (bvslt a_ack!429 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!428))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!427)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!429)
                          (fp.abs ((_ to_fp 11 53) c_ack!428))))))
  (not a!1)))
(assert (not (bvslt a_ack!429 b_ack!427)))
(assert (not (bvslt a_ack!429 b_ack!427)))
(assert (not (bvslt a_ack!429 b_ack!427)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!428) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!429)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!427)
                                   ((_ to_fp 11 53) c_ack!428))))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!429)
        (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x8000000000000000)
                ((_ to_fp 11 53) c_ack!428))))
(assert (bvslt b_ack!427 (bvadd #xffffffff a_ack!429)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 a_ack!429))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 a_ack!429))
                           ((_ to_fp 11 53) c_ack!428))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!428)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!429)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.mul roundNearestTiesToEven (CF_exp c_ack!428) a!2))
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!428)
                    ((_ to_fp 11 53) #xbff0000000000000))
            (CF_exp c_ack!428)))))

(check-sat)
(exit)
