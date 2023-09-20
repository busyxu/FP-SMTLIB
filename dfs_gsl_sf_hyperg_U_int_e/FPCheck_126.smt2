(declare-fun c_ack!542 () (_ BitVec 64))
(declare-fun b_ack!541 () (_ BitVec 32))
(declare-fun a_ack!543 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!542) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!542) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!542) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!541)))
(assert (not (= #xffffffff (bvsub a_ack!543 b_ack!541))))
(assert (not (= #xfffffffe (bvsub a_ack!543 b_ack!541))))
(assert (not (= (bvsub #x00000002 b_ack!541)
        (bvadd #x00000002 (bvsub a_ack!543 b_ack!541)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!543 b_ack!541))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!543 b_ack!541))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!541))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fefae147ae147ae)
                          (fp.abs ((_ to_fp 11 53) c_ack!542))))))
  (not a!1)))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!543 b_ack!541))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x4014000000000000))))
(assert (bvslt (bvsub #x00000002 b_ack!541) #x00000005))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!542) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!543 b_ack!541))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x4024000000000000))))
(assert (bvslt (bvsub #x00000002 b_ack!541) #x0000000a))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!542) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt (bvadd #x00000001 (bvsub a_ack!543 b_ack!541)) #x00000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!543 b_ack!541))))))
  (not (fp.geq ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvsub #x00000002 b_ack!541))
               (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!542))))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub #x00000002 b_ack!541))
             ((_ to_fp 11 53) c_ack!542))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!543 b_ack!541)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!1)
    #x3ff0000000000000)))

(check-sat)
(exit)
