(declare-fun c_ack!227 () (_ BitVec 64))
(declare-fun b_ack!226 () (_ BitVec 32))
(declare-fun a_ack!228 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!227) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!227) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!227) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!226)))
(assert (not (= #xffffffff (bvsub a_ack!228 b_ack!226))))
(assert (not (= #xfffffffe (bvsub a_ack!228 b_ack!226))))
(assert (not (= (bvsub #x00000002 b_ack!226)
        (bvadd #x00000002 (bvsub a_ack!228 b_ack!226)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!228 b_ack!226))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!228 b_ack!226))))))
  (FPCHECK_FSUB_OVERFLOW
    a!1
    ((_ to_fp 11 53) roundNearestTiesToEven (bvsub #x00000002 b_ack!226)))))

(check-sat)
(exit)
