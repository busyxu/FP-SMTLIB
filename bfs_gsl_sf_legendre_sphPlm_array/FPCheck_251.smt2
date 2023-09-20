(declare-fun b_ack!1149 () (_ BitVec 32))
(declare-fun a_ack!1151 () (_ BitVec 32))
(declare-fun c_ack!1150 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1149 #x00000000)))
(assert (not (bvslt a_ack!1151 b_ack!1149)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1150) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1150) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1149)))
(assert (= #x00000000 b_ack!1149))
(assert (not (= a_ack!1151 b_ack!1149)))
(assert (not (= a_ack!1151 (bvadd #x00000001 b_ack!1149))))
(assert (bvsle (bvadd #x00000002 b_ack!1149) a_ack!1151))
(assert (bvsle (bvadd #x00000003 b_ack!1149) a_ack!1151))
(assert (bvsle (bvadd #x00000004 b_ack!1149) a_ack!1151))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000004 b_ack!1149)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvadd #x00000004 b_ack!1149))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000004 b_ack!1149 b_ack!1149)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT
    (fp.mul roundNearestTiesToEven a!2 a!3)
    (fp.mul roundNearestTiesToEven a!2 a!3)))))

(check-sat)
(exit)
