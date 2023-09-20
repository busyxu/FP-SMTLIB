(declare-fun c_ack!401 () (_ BitVec 64))
(declare-fun b_ack!400 () (_ BitVec 32))
(declare-fun a_ack!402 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!401) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!401) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!401) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!400)))
(assert (not (= #xffffffff (bvsub a_ack!402 b_ack!400))))
(assert (not (= #xfffffffe (bvsub a_ack!402 b_ack!400))))
(assert (not (= (bvsub #x00000002 b_ack!400)
        (bvadd #x00000002 (bvsub a_ack!402 b_ack!400)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!402 b_ack!400))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!402 b_ack!400))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!400))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fefae147ae147ae (fp.abs ((_ to_fp 11 53) c_ack!401))))

(check-sat)
(exit)
