(declare-fun b_ack!1983 () (_ BitVec 32))
(declare-fun a_ack!1985 () (_ BitVec 32))
(declare-fun c_ack!1984 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1983 #x00000000)))
(assert (not (bvslt a_ack!1985 b_ack!1983)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1984) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1984) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1983)))
(assert (= #x00000000 b_ack!1983))
(assert (not (= a_ack!1985 b_ack!1983)))
(assert (not (= a_ack!1985 (bvadd #x00000001 b_ack!1983))))
(assert (bvsle (bvadd #x00000002 b_ack!1983) a_ack!1985))
(assert (bvsle (bvadd #x00000003 b_ack!1983) a_ack!1985))
(assert (bvsle (bvadd #x00000004 b_ack!1983) a_ack!1985))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000004 b_ack!1983)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvmul #x00000002 (bvadd #x00000004 b_ack!1983))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000004 b_ack!1983 b_ack!1983)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW a!2 a!3))))

(check-sat)
(exit)
