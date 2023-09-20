(declare-fun c_ack!239 () (_ BitVec 64))
(declare-fun b_ack!238 () (_ BitVec 32))
(declare-fun a_ack!240 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!238)))
(assert (not (= #xffffffff (bvsub a_ack!240 b_ack!238))))
(assert (not (= #xfffffffe (bvsub a_ack!240 b_ack!238))))
(assert (not (= (bvsub #x00000002 b_ack!238)
        (bvadd #x00000002 (bvsub a_ack!240 b_ack!238)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!240 b_ack!238))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!240 b_ack!238))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!238))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!240 b_ack!238)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!240 b_ack!238))))))
(let ((a!3 (fp.abs (fp.sub roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!238))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!3))))

(check-sat)
(exit)
