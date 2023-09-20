(declare-fun x1_ack!2122 () (_ BitVec 64))
(declare-fun x0_ack!2126 () (_ BitVec 64))
(declare-fun x2_ack!2123 () (_ BitVec 64))
(declare-fun b_ack!2125 () (_ BitVec 64))
(declare-fun a_ack!2124 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2126) ((_ to_fp 11 53) x1_ack!2122)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2122) ((_ to_fp 11 53) x2_ack!2123)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2122)
                       ((_ to_fp 11 53) x0_ack!2126))
               ((_ to_fp 11 53) x0_ack!2126))
       ((_ to_fp 11 53) x1_ack!2122)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2122)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2122)
                       ((_ to_fp 11 53) x0_ack!2126)))
       ((_ to_fp 11 53) x0_ack!2126)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2123)
                       ((_ to_fp 11 53) x1_ack!2122))
               ((_ to_fp 11 53) x1_ack!2122))
       ((_ to_fp 11 53) x2_ack!2123)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2123)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2123)
                       ((_ to_fp 11 53) x1_ack!2122)))
       ((_ to_fp 11 53) x1_ack!2122)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2122)
                    ((_ to_fp 11 53) x0_ack!2126))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2123)
                    ((_ to_fp 11 53) x1_ack!2122))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2124) ((_ to_fp 11 53) b_ack!2125))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2124) ((_ to_fp 11 53) x0_ack!2126))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2125) ((_ to_fp 11 53) x2_ack!2123))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2124) ((_ to_fp 11 53) b_ack!2125))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2124) ((_ to_fp 11 53) x0_ack!2126))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2124) ((_ to_fp 11 53) x1_ack!2122))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2125) ((_ to_fp 11 53) x0_ack!2126))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2125) ((_ to_fp 11 53) x1_ack!2122)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2122) ((_ to_fp 11 53) b_ack!2125))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2122)
                    ((_ to_fp 11 53) x0_ack!2126))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2123)
                    ((_ to_fp 11 53) x1_ack!2122))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
