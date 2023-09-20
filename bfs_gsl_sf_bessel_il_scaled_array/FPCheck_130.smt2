(declare-fun b_ack!467 () (_ BitVec 64))
(declare-fun a_ack!468 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!468) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #xffffffff a_ack!468))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!467))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!467)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!467))
                           (fp.abs ((_ to_fp 11 53) b_ack!467)))
                   (fp.abs ((_ to_fp 11 53) b_ack!467)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!467)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!467)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!467))
                           (fp.abs ((_ to_fp 11 53) b_ack!467)))
                   (fp.abs ((_ to_fp 11 53) b_ack!467)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!467)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!467))
          (fp.abs ((_ to_fp 11 53) b_ack!467)))
  #x3e5ae64567f544e4))

(check-sat)
(exit)
