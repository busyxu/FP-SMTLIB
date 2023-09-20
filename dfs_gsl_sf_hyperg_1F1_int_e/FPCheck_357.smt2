(declare-fun c_ack!1904 () (_ BitVec 64))
(declare-fun b_ack!1903 () (_ BitVec 32))
(declare-fun a_ack!1905 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1904) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1905 b_ack!1903)))
(assert (not (= #x00000000 b_ack!1903)))
(assert (not (= #x00000000 a_ack!1905)))
(assert (not (bvslt b_ack!1903 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1904) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1904) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1905 #x00000000)))
(assert (not (bvslt a_ack!1905 #x00000000)))
(assert (not (= a_ack!1905 b_ack!1903)))
(assert (not (= #x00000001 a_ack!1905)))
(assert (not (= b_ack!1903 (bvadd #x00000001 a_ack!1905))))
(assert (not (= a_ack!1905 (bvadd #x00000001 b_ack!1903))))
(assert (not (= a_ack!1905 (bvadd #x00000002 b_ack!1903))))
(assert (not (= b_ack!1903 (bvmul #x00000002 a_ack!1905))))
(assert (bvslt b_ack!1903 #x0000000a))
(assert (bvslt a_ack!1905 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1904))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1903)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1905)
                          (fp.abs ((_ to_fp 11 53) c_ack!1904))))))
  (not a!1)))
(assert (not (bvslt a_ack!1905 b_ack!1903)))
(assert (not (bvslt a_ack!1905 b_ack!1903)))
(assert (not (bvslt a_ack!1905 b_ack!1903)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1904) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1905)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1903)
                                   ((_ to_fp 11 53) c_ack!1904))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1905)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1904)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1903)
                                    ((_ to_fp 11 53) c_ack!1904))))))
  (not (bvslt b_ack!1903
              (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1903)
                                    ((_ to_fp 11 53) c_ack!1904))))))
  (FPCHECK_FMUL_OVERFLOW
    c_ack!1904
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      (bvsub ((_ fp.to_sbv 32) roundTowardZero a!1) b_ack!1903)))))

(check-sat)
(exit)
