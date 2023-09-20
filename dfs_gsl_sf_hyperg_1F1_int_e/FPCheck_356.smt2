(declare-fun c_ack!1898 () (_ BitVec 64))
(declare-fun b_ack!1897 () (_ BitVec 32))
(declare-fun a_ack!1899 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1899 b_ack!1897)))
(assert (not (= #x00000000 b_ack!1897)))
(assert (not (= #x00000000 a_ack!1899)))
(assert (not (bvslt b_ack!1897 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1898) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1898) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1899 #x00000000)))
(assert (not (bvslt a_ack!1899 #x00000000)))
(assert (not (= a_ack!1899 b_ack!1897)))
(assert (not (= #x00000001 a_ack!1899)))
(assert (not (= b_ack!1897 (bvadd #x00000001 a_ack!1899))))
(assert (not (= a_ack!1899 (bvadd #x00000001 b_ack!1897))))
(assert (not (= a_ack!1899 (bvadd #x00000002 b_ack!1897))))
(assert (not (= b_ack!1897 (bvmul #x00000002 a_ack!1899))))
(assert (bvslt b_ack!1897 #x0000000a))
(assert (bvslt a_ack!1899 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1898))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1897)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1899)
                          (fp.abs ((_ to_fp 11 53) c_ack!1898))))))
  (not a!1)))
(assert (not (bvslt a_ack!1899 b_ack!1897)))
(assert (not (bvslt a_ack!1899 b_ack!1897)))
(assert (not (bvslt a_ack!1899 b_ack!1897)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1899)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1897)
                                   ((_ to_fp 11 53) c_ack!1898))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1899)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1898)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1897)
                                    ((_ to_fp 11 53) c_ack!1898))))))
  (not (bvslt b_ack!1897
              (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1897)
                                    ((_ to_fp 11 53) c_ack!1898))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1897)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) c_ack!1898))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1898)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY
    a!2
    (fp.mul roundNearestTiesToEven
            (CF_exp c_ack!1898)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!3))))))

(check-sat)
(exit)
