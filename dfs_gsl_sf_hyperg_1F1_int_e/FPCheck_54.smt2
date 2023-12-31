(declare-fun c_ack!275 () (_ BitVec 64))
(declare-fun b_ack!274 () (_ BitVec 32))
(declare-fun a_ack!276 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!276 b_ack!274)))
(assert (not (= #x00000000 b_ack!274)))
(assert (not (= #x00000000 a_ack!276)))
(assert (not (bvslt b_ack!274 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!275) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!275) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!276 #x00000000)))
(assert (not (bvslt a_ack!276 #x00000000)))
(assert (not (= a_ack!276 b_ack!274)))
(assert (not (= #x00000001 a_ack!276)))
(assert (not (= b_ack!274 (bvadd #x00000001 a_ack!276))))
(assert (not (= a_ack!276 (bvadd #x00000001 b_ack!274))))
(assert (not (= a_ack!276 (bvadd #x00000002 b_ack!274))))
(assert (not (= b_ack!274 (bvmul #x00000002 a_ack!276))))
(assert (bvslt b_ack!274 #x0000000a))
(assert (bvslt a_ack!276 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!275))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!274)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!276)
                          (fp.abs ((_ to_fp 11 53) c_ack!275))))))
  (not a!1)))
(assert (not (bvslt a_ack!276 b_ack!274)))
(assert (not (bvslt a_ack!276 b_ack!274)))
(assert (not (bvslt a_ack!276 b_ack!274)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!276)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!274)
                                   ((_ to_fp 11 53) c_ack!275))))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!276)
        (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x8000000000000000)
                ((_ to_fp 11 53) c_ack!275))))
(assert (FPCHECK_FDIV_OVERFLOW
  c_ack!275
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!276)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
