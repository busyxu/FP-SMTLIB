(declare-fun e0_ack!793 () (_ BitVec 64))
(declare-fun e1_ack!794 () (_ BitVec 64))
(declare-fun e2_ack!795 () (_ BitVec 64))
(declare-fun x2_ack!792 () (_ BitVec 64))
(declare-fun x1_ack!791 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!793)
                    ((_ to_fp 11 53) e0_ack!793))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!794)
                    ((_ to_fp 11 53) e1_ack!794))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!795)
                    ((_ to_fp 11 53) e2_ack!795))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e1_ack!794)
                                  ((_ to_fp 11 53) e1_ack!794)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e2_ack!795)
                                  ((_ to_fp 11 53) e2_ack!795)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!791)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!792)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x0000000000000000))
              ((_ to_fp 11 53) #x0000000000000000))))))

(check-sat)
(exit)
