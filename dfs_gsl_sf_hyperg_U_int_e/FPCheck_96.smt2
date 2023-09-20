(declare-fun c_ack!452 () (_ BitVec 64))
(declare-fun b_ack!451 () (_ BitVec 32))
(declare-fun a_ack!453 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!452) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!452) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!452) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!451)))
(assert (not (= #xffffffff (bvsub a_ack!453 b_ack!451))))
(assert (not (= #xfffffffe (bvsub a_ack!453 b_ack!451))))
(assert (not (= (bvsub #x00000002 b_ack!451)
        (bvadd #x00000002 (bvsub a_ack!453 b_ack!451)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!453 b_ack!451))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!453 b_ack!451))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!451))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fefae147ae147ae)
                          (fp.abs ((_ to_fp 11 53) c_ack!452))))))
  (not a!1)))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!453 b_ack!451))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x4014000000000000))))
(assert (bvslt (bvsub #x00000002 b_ack!451) #x00000005))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!452) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!453 b_ack!451))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x4024000000000000))))
(assert (bvslt (bvsub #x00000002 b_ack!451) #x0000000a))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!452) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt (bvadd #x00000001 (bvsub a_ack!453 b_ack!451)) #x00000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!453 b_ack!451))))))
  (not (fp.geq ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvsub #x00000002 b_ack!451))
               (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!452))))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub #x00000002 b_ack!451))
             ((_ to_fp 11 53) c_ack!452))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvsub #x00000002 b_ack!451))
          ((_ to_fp 11 53) c_ack!452))))

(check-sat)
(exit)
