(declare-fun b_ack!1074 () (_ BitVec 32))
(declare-fun a_ack!1076 () (_ BitVec 32))
(declare-fun c_ack!1075 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1074 #x00000000)))
(assert (not (bvslt a_ack!1076 b_ack!1074)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1075) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1075) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1074)))
(assert (= #x00000000 b_ack!1074))
(assert (not (= a_ack!1076 b_ack!1074)))
(assert (not (= a_ack!1076 (bvadd #x00000001 b_ack!1074))))
(assert (bvsle (bvadd #x00000002 b_ack!1074) a_ack!1076))
(assert (bvsle (bvadd #x00000003 b_ack!1074) a_ack!1076))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1075)
                           ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                   ((_ to_fp 11 53) #x3fd20dd750429b6d)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!1074 b_ack!1074)))
                   ((_ to_fp 11 53) #x3fd20dd750429b6d))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1075)
                                   a!1)
                           ((_ to_fp 11 53) #x400efbdeb14f4eda))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4001e3779b97f4a8))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000002 (bvadd b_ack!1074 b_ack!1074)))
                   a!1)))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1075)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4017aa10d193c22d))))
  (FPCHECK_FSUB_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven a!5 ((_ to_fp 11 53) #x3ff870be4c1c28b2)))))))

(check-sat)
(exit)
