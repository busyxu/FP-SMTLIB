(declare-fun b_ack!1851 () (_ BitVec 32))
(declare-fun a_ack!1853 () (_ BitVec 32))
(declare-fun c_ack!1852 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1851 #x00000000)))
(assert (not (bvslt a_ack!1853 b_ack!1851)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1852) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1852) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1851)))
(assert (= #x00000000 b_ack!1851))
(assert (not (= a_ack!1853 b_ack!1851)))
(assert (not (= a_ack!1853 (bvadd #x00000001 b_ack!1851))))
(assert (bvsle (bvadd #x00000002 b_ack!1851) a_ack!1853))
(assert (bvsle (bvadd #x00000003 b_ack!1851) a_ack!1853))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1852)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1852)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!1851 b_ack!1851))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))
                   ((_ to_fp 11 53) #x4001e3779b97f4a8))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400efbdeb14f4eda))
                           a!2)
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) c_ack!1852) a!3)
    #x4017aa10d193c22d))))

(check-sat)
(exit)
