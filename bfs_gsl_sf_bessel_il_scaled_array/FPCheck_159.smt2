(declare-fun b_ack!583 () (_ BitVec 64))
(declare-fun a_ack!584 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!583) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!583) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!584) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!583) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!584)))
(assert (not (= #x00000000 a_ack!584)))
(assert (not (= #x00000001 a_ack!584)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!583))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!583)
                       ((_ to_fp 11 53) b_ack!583))
               ((_ to_fp 11 53) b_ack!583))
       ((_ to_fp 11 53) b_ack!583)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!583))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!583)
                       ((_ to_fp 11 53) b_ack!583))
               ((_ to_fp 11 53) b_ack!583))
       ((_ to_fp 11 53) b_ack!583)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!584))
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!583)
                      ((_ to_fp 11 53) b_ack!583))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (not (bvslt (bvadd #x00000001 a_ack!584) #x00000096)))
(assert (FPCHECK_FMUL_ACCURACY b_ack!583 b_ack!583))

(check-sat)
(exit)
