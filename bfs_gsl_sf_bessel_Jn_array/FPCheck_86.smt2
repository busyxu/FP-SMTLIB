(declare-fun a_ack!430 () (_ BitVec 32))
(declare-fun b_ack!428 () (_ BitVec 32))
(declare-fun c_ack!429 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!430 #x00000000)))
(assert (not (bvslt b_ack!428 a_ack!430)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!428) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!428)))
(assert (not (= #x00000000 b_ack!428)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!428))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) c_ack!429)
                      ((_ to_fp 11 53) c_ack!429))
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 b_ack!428)
                            (bvadd #x00000001 b_ack!428)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3f20000000000000)
                 ((_ to_fp 11 53) c_ack!429))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!428)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
  (FPCHECK_FMUL_ACCURACY a!1 #x400921fb54442d18)))

(check-sat)
(exit)
