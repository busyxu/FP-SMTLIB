(declare-fun c_ack!275 () (_ BitVec 64))
(declare-fun b_ack!274 () (_ BitVec 32))
(declare-fun a_ack!276 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!274)))
(assert (not (= #xffffffff (bvsub a_ack!276 b_ack!274))))
(assert (not (= #xfffffffe (bvsub a_ack!276 b_ack!274))))
(assert (not (= (bvsub #x00000002 b_ack!274)
        (bvadd #x00000002 (bvsub a_ack!276 b_ack!274)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!276 b_ack!274))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!276 b_ack!274))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!274))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!276 b_ack!274)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!276 b_ack!274))))))
(let ((a!3 (fp.abs (fp.sub roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!274))))))
(let ((a!4 (fp.lt (fp.mul roundNearestTiesToEven a!1 a!3)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fefae147ae147ae)
                          (fp.abs ((_ to_fp 11 53) c_ack!275))))))
  (not a!4)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!276 b_ack!274))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x4014000000000000)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!276 b_ack!274))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x4024000000000000)))))
(assert (bvslt (bvadd #x00000001 (bvsub a_ack!276 b_ack!274)) #x00000000))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #xfffffffe b_ack!274))
                           ((_ to_fp 11 53) c_ack!275))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #xfffffffe b_ack!274)))))
  (fp.eq a!1 ((_ to_fp 11 53) c_ack!275))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #xfffffffe b_ack!274))
                           ((_ to_fp 11 53) c_ack!275))
                   ((_ to_fp 11 53) c_ack!275))))
  (fp.eq a!1
         ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #xfffffffe b_ack!274)))))
(assert (bvslt (bvadd #x00000001 (bvsub a_ack!276 b_ack!274)) #xffffffff))
(assert (FPCHECK_FMUL_OVERFLOW
  #xbff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvsub #x00000003 b_ack!274))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
