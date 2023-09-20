(declare-fun c_ack!218 () (_ BitVec 64))
(declare-fun b_ack!217 () (_ BitVec 32))
(declare-fun a_ack!219 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!218) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!218) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!218) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!217)))
(assert (not (= #xffffffff (bvsub a_ack!219 b_ack!217))))
(assert (not (= #xfffffffe (bvsub a_ack!219 b_ack!217))))
(assert (not (= (bvsub #x00000002 b_ack!217)
        (bvadd #x00000002 (bvsub a_ack!219 b_ack!217)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!219 b_ack!217))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  #x3ff0000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvsub a_ack!219 b_ack!217)))))

(check-sat)
(exit)
