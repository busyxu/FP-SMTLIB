(declare-fun b_ack!1953 () (_ BitVec 32))
(declare-fun a_ack!1955 () (_ BitVec 32))
(declare-fun c_ack!1954 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!1953 #x00000000)))
(assert (not (bvslt a_ack!1955 #x00000000)))
(assert (not (= #x00000000 b_ack!1953)))
(assert (not (= #x00000001 b_ack!1953)))
(assert (= #x00000000 a_ack!1955))
(assert (not (bvslt b_ack!1953 #x00000000)))
(assert (not (= #x00000000 b_ack!1953)))
(assert (not (= #x00000001 b_ack!1953)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1954) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!1954)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (bvsle #x00000001 (bvadd #xffffffff b_ack!1953)))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!1954)))
                  ((_ to_fp 11 53) #x7fefffffffffffff))))
  (not a!1)))
(assert (bvsle #x00000002 (bvadd #xffffffff b_ack!1953)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1954))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1954)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.gt (fp.abs a!1) ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!1954)))
                  ((_ to_fp 11 53) #x7fcccccccccccccc))))
  (not a!1)))
(assert (bvsle #x00000003 (bvadd #xffffffff b_ack!1953)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1954))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1954)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1954))
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1954))))))
  (not (fp.gt (fp.abs a!2) ((_ to_fp 11 53) #x7fefffffffffffff))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1954))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1954)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.gt (fp.abs a!1) ((_ to_fp 11 53) #x7fc3333333333333)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1954))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1954)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FMUL_ACCURACY #x4018000000000000 a!1)))

(check-sat)
(exit)
