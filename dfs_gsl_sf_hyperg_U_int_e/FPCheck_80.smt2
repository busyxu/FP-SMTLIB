(declare-fun c_ack!386 () (_ BitVec 64))
(declare-fun b_ack!385 () (_ BitVec 32))
(declare-fun a_ack!387 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!386) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!386) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!386) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!385)))
(assert (not (= #xffffffff (bvsub a_ack!387 b_ack!385))))
(assert (not (= #xfffffffe (bvsub a_ack!387 b_ack!385))))
(assert (not (= (bvsub #x00000002 b_ack!385)
        (bvadd #x00000002 (bvsub a_ack!387 b_ack!385)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!387 b_ack!385))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (FPCHECK_FADD_ACCURACY
  #x3ff0000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvsub a_ack!387 b_ack!385)))))

(check-sat)
(exit)
