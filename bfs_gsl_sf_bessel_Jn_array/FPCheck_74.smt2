(declare-fun a_ack!379 () (_ BitVec 32))
(declare-fun b_ack!377 () (_ BitVec 32))
(declare-fun c_ack!378 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!379 #x00000000)))
(assert (not (bvslt b_ack!377 a_ack!379)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!378) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!377) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!378) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!377)))
(assert (not (= #x00000000 b_ack!377)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!378) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!377))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) c_ack!378)
                      ((_ to_fp 11 53) c_ack!378))
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 b_ack!377)
                            (bvadd #x00000001 b_ack!377)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3f20000000000000)
                 ((_ to_fp 11 53) c_ack!378))
         a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4010000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!377))))

(check-sat)
(exit)
