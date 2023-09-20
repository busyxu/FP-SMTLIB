(declare-fun c_ack!1871 () (_ BitVec 64))
(declare-fun b_ack!1870 () (_ BitVec 32))
(declare-fun a_ack!1872 () (_ BitVec 32))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1871) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1872 b_ack!1870)))
(assert (not (= #x00000000 b_ack!1870)))
(assert (not (= #x00000000 a_ack!1872)))
(assert (not (bvslt b_ack!1870 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1871) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1871) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1872 #x00000000)))
(assert (not (bvslt a_ack!1872 #x00000000)))
(assert (not (= a_ack!1872 b_ack!1870)))
(assert (not (= #x00000001 a_ack!1872)))
(assert (not (= b_ack!1870 (bvadd #x00000001 a_ack!1872))))
(assert (not (= a_ack!1872 (bvadd #x00000001 b_ack!1870))))
(assert (not (= a_ack!1872 (bvadd #x00000002 b_ack!1870))))
(assert (not (= b_ack!1870 (bvmul #x00000002 a_ack!1872))))
(assert (bvslt b_ack!1870 #x0000000a))
(assert (bvslt a_ack!1872 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1871))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1870)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1872)
                          (fp.abs ((_ to_fp 11 53) c_ack!1871))))))
  (not a!1)))
(assert (not (bvslt a_ack!1872 b_ack!1870)))
(assert (not (bvslt a_ack!1872 b_ack!1870)))
(assert (not (bvslt a_ack!1872 b_ack!1870)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1871) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1872)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1870)
                                   ((_ to_fp 11 53) c_ack!1871))))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1872)
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) c_ack!1871)))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1870)
                                    ((_ to_fp 11 53) c_ack!1871))))))
  (not (bvslt b_ack!1870
              (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_ceil (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      b_ack!1870)
                                    ((_ to_fp 11 53) c_ack!1871))))))
  (FPCHECK_FADD_ACCURACY
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      ((_ fp.to_sbv 32) roundTowardZero a!1))
    c_ack!1871)))

(check-sat)
(exit)
