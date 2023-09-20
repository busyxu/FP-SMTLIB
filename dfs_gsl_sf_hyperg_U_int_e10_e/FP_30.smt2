(declare-fun c_ack!419 () (_ BitVec 64))
(declare-fun b_ack!418 () (_ BitVec 32))
(declare-fun a_ack!420 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!419) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!419) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!419) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!418)))
(assert (not (= #xffffffff (bvsub a_ack!420 b_ack!418))))
(assert (not (= #xfffffffe (bvsub a_ack!420 b_ack!418))))
(assert (not (= (bvsub #x00000002 b_ack!418)
        (bvadd #x00000002 (bvsub a_ack!420 b_ack!418)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!420 b_ack!418))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!420 b_ack!418))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!418))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000))))))

(check-sat)
(exit)
