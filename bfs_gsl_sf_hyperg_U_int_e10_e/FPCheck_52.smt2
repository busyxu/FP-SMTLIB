(declare-fun c_ack!320 () (_ BitVec 64))
(declare-fun b_ack!319 () (_ BitVec 32))
(declare-fun a_ack!321 () (_ BitVec 32))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!320) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!320) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!320) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!319)))
(assert (not (= #xffffffff (bvsub a_ack!321 b_ack!319))))
(assert (not (= #xfffffffe (bvsub a_ack!321 b_ack!319))))
(assert (= (bvsub #x00000002 b_ack!319) (bvadd #x00000002 (bvsub a_ack!321 b_ack!319))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!321 b_ack!319)))
                   (CF_log c_ack!320))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x41dfffffff800000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!321 b_ack!319)))
                   (CF_log c_ack!320))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc1dfffffffc00000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!321 b_ack!319)))
                   (CF_log c_ack!320))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e42fefa39ef)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!321 b_ack!319)))
                   (CF_log c_ack!320))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086232bdd7abcd2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!321 b_ack!319)))
                   (CF_log c_ack!320))))
  (FPCHECK_FADD_ACCURACY (fp.abs a!1) #x3ff0000000000000)))

(check-sat)
(exit)
