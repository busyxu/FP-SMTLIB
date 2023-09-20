(declare-fun a_ack!384 () (_ BitVec 32))
(declare-fun b_ack!383 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!384 #x00000000)))
(assert (not (= #x00000000 a_ack!384)))
(assert (not (= #x00000001 a_ack!384)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!383))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 a_ack!384))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!383))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!383))))))
  (not a!1)))
(assert (bvslt #x00000002 a_ack!384))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!383)
                                   ((_ to_fp 11 53) b_ack!383))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.gt a!1
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!383))))))
  (not a!2))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!383))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 b_ack!383))

(check-sat)
(exit)
