(declare-fun b_ack!2070 () (_ BitVec 32))
(declare-fun a_ack!2072 () (_ BitVec 32))
(declare-fun c_ack!2071 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2070 #x00000000)))
(assert (not (bvslt a_ack!2072 b_ack!2070)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2071) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2071) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!2070)))
(assert (= #x00000000 b_ack!2070))
(assert (not (= a_ack!2072 b_ack!2070)))
(assert (not (= a_ack!2072 (bvadd #x00000001 b_ack!2070))))
(assert (bvsle (bvadd #x00000002 b_ack!2070) a_ack!2072))
(assert (bvsle (bvadd #x00000003 b_ack!2070) a_ack!2072))
(assert (bvsle (bvadd #x00000004 b_ack!2070) a_ack!2072))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2071)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2071)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!2070 b_ack!2070)))
                   ((_ to_fp 11 53) #x3fd20dd750429b6d))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400efbdeb14f4eda))
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4001e3779b97f4a8)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      (bvadd #x00000003 (bvadd b_ack!2070 b_ack!2070)))
    a!3))))

(check-sat)
(exit)
