(declare-fun c_ack!308 () (_ BitVec 64))
(declare-fun b_ack!307 () (_ BitVec 32))
(declare-fun a_ack!309 () (_ BitVec 32))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!308) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!308) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!308) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!307)))
(assert (not (= #xffffffff (bvsub a_ack!309 b_ack!307))))
(assert (not (= #xfffffffe (bvsub a_ack!309 b_ack!307))))
(assert (= (bvsub #x00000002 b_ack!307) (bvadd #x00000002 (bvsub a_ack!309 b_ack!307))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!309 b_ack!307)))
                   (CF_log c_ack!308))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x41dfffffff800000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!309 b_ack!307)))
                   (CF_log c_ack!308))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc1dfffffffc00000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!309 b_ack!307)))
                   (CF_log c_ack!308))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e42fefa39ef)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!309 b_ack!307)))
                   (CF_log c_ack!308))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086232bdd7abcd2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #xffffffff (bvsub a_ack!309 b_ack!307)))
                   (CF_log c_ack!308))))
  (FPCHECK_FSUB_ACCURACY a!1 #x0000000000000000)))

(check-sat)
(exit)
