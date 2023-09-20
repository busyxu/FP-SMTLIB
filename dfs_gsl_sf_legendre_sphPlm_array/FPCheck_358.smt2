(declare-fun b_ack!1842 () (_ BitVec 32))
(declare-fun a_ack!1844 () (_ BitVec 32))
(declare-fun c_ack!1843 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!1842 #x00000000)))
(assert (not (bvslt a_ack!1844 b_ack!1842)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1843) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1843) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1842)))
(assert (= #x00000000 b_ack!1842))
(assert (not (= a_ack!1844 b_ack!1842)))
(assert (not (= a_ack!1844 (bvadd #x00000001 b_ack!1842))))
(assert (bvsle (bvadd #x00000002 b_ack!1842) a_ack!1844))
(assert (bvsle (bvadd #x00000003 b_ack!1842) a_ack!1844))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1843)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1843)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!1842 b_ack!1842))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))
                   ((_ to_fp 11 53) #x4001e3779b97f4a8))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400efbdeb14f4eda))
                           a!2)
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FMUL_ACCURACY c_ack!1843 a!3))))

(check-sat)
(exit)
